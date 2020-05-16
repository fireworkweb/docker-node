scripts-prepend-node-path=true
@if (version_compare($version, '10', '>=') || in_array($version, ['latest', 'qa']))
store-dir=/home/fwd/.pnpm-store
shamefully-hoist=true
@endif
