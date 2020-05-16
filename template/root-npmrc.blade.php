scripts-prepend-node-path=true
@if (version_compare($version, '10', '>=') || in_array($version, ['latest', 'qa']))
package-import-method=copy
shamefully-hoist=true
store-dir=/root/.pnpm-store
@endif
